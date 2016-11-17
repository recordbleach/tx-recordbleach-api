require 'swagger_helper'

describe 'Petition API' do
  path 'api/petitions' do 
    post 'Creates a Petition' do 
      tags 'Petitions'
      consumes 'application/json', 'application/xml'
      parameter name: :petition, in: :body, schema:{
        type: object,
        properties: {
          legal_name: {type: :string},
          dob: {type: :date},
          ssn: {type: :string},
          address: {type: :string}
          city: {type: :string},
          state: {ype: :string}
        }
      }
      response '201', 'petition created' do 
        let(:petition) {{ legal_name: 'foo', dob: 20160101, ssn: 'bar'}}
          run_test!
      end
      end
    end
  end
