class HomeController < ApplicationController
  def index
  	@subjects = current_user.subjects 
    @subjects = Subject.all
  end

  def test_new
  	@subject = Subject.new
  end

  def test_create
    @user = User.find(current_user.id)
  	#subject = Subject.create(name: params[:name], user_id: current_user.id )
  	subject = @user.subjects.create(subject_params)
  	redirect_to root_path
  end

  def test_show
    @subject = Subject.find(params[:id])
  end

  def test_edit
    @subject = Subject.find(params[:id])
  end


  def test_update
    @subject = Subject.find(params[:id])
    @subject.update(subject_params)

    redirect_to root_path
  end


  def test_destroy
    subjects = Subject.find(params[:id])
    subjects.destroy

    redirect_to root_path
  end

  def take_test
    @subject = Subject.find(params[:id])
    @student_answer = StudentAnswer.new 
  end

  def test_submit
    student_answer = StudentAnswer.create(sa_params)

    redirect_to root_path
  end

  private
   def subject_params
    params.require(:subject).permit(:name, questions_attributes: [ :id, :title, :_destroy, answers_attributes: [ :id, :q_answer, :correct_answer, :_destroy ]] )
   end

   def sa_params
    params.require(:student_answer).permit(:user_id,:question_id,:answer_id)
   end


end
