class ExercisesController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(params[:workout].permit(:nome, :series, :repeticoes))

    redirect_to workout_path(@workout)
  end
end
