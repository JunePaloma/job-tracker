class JobsController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @jobs = @company.jobs
  end

  def new
    @company = Company.find(params[:company_id])
    @categories = Category.all
    @job = Job.new
  end

  def create

    @category = Category.find(params[:job][:category])

    @company = Company.find(params[:company_id])
    @job = @company.jobs.new(job_params)
    @job.category = @category
    if @job.save
      flash[:success] = "You created #{@job.title} at #{@company.name}"
      redirect_to company_job_path(@company, @job)
    else
      render :new
    end
  end

  def show
    binding.pry
    @job = Job.find(params[:id])
    @company = Company.find(params[:company_id])
    @comment = Comment.new
    @comment.job_id = @job.id
  end

  def edit
    @company = Company.find(params[:company_id])
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to company_job_path(@job.company, @job)
  end

  def destroy

    @job = Job.find(params[:id])
    @job.destroy

    redirect_to company_jobs_path(params[:company_id])
  end


  private

  def job_params
    params.require(:job).permit(:title, :description, :level_of_interest, :city)
  end
end
