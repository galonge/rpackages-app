
FactoryGirl.define do
  factory :package do
    name { 'A3' }
    version { '1.0.0' }
    date_of_publication { '2015-08-16 23:05:52' }
    title { 'Accurate, Adaptable' }
    description { 'Supplies tools for tabulating and analyzing the results of predictive models. ' }
    author { 'Scott Freeman' }
    maintainer {'Scott' }
  end
end
