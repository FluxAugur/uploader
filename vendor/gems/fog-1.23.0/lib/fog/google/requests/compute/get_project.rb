module Fog
  module Compute
    class Google
      class Mock
        def get_project(identity)
          Fog::Mock.not_implemented
        end
      end

      class Real
        def get_project(identity)
          api_method = @compute.projects.get
          parameters = {
            :project => identity,
          }

          result = self.build_result(api_method, parameters)
          response = self.build_response(result)
        end
      end
    end
  end
end
