FactoryGirl.define do
  factory :question do
    newbie true
    html_css false
    tutorials false
    study_group false
    program false
    website true
    work false
    bootcamp true
    compsci false
    rlsgrl_rlsbrg true
    continue "Yes"
    support "Yes"
    experience "No"
  end
end
