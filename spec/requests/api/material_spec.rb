require 'swagger_helper'

RSpec.describe 'api/material', type: :request do
  path '/blogs' do
    post 'Creates a material' do
      tags 'Blogs'
      consumes 'application/json'
      parameter name: :material, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string }
        },
        required: %w[name]
      }

      response '201', 'material created' do
        let(:material) { { name: 'foo' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:material) { { name: 'foo' } }
        run_test!
      end
    end
  end
end
