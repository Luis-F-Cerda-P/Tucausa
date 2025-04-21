require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "Attorney", with: @schedule.attorney
    fill_in "Case", with: @schedule.case_id
    fill_in "Chart", with: @schedule.chart_id
    fill_in "Date", with: @schedule.date
    fill_in "Judge", with: @schedule.judge
    fill_in "Rapporteur", with: @schedule.rapporteur
    fill_in "Room", with: @schedule.room_id
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Edit this schedule", match: :first

    fill_in "Attorney", with: @schedule.attorney
    fill_in "Case", with: @schedule.case_id
    fill_in "Chart", with: @schedule.chart_id
    fill_in "Date", with: @schedule.date
    fill_in "Judge", with: @schedule.judge
    fill_in "Rapporteur", with: @schedule.rapporteur
    fill_in "Room", with: @schedule.room_id
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    accept_confirm { click_on "Destroy this schedule", match: :first }

    assert_text "Schedule was successfully destroyed"
  end
end
