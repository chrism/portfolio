class ProjectimagesController < ApplicationController
  # GET /project/:project_id/projectimages
  # GET /projects/:project_id/projectimages.json
  def index
    @project = Project.find(params[:project_id])
    @projectimages = @project.projectimages

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projectimages }
    end
  end
  
  # GET /project/:project_id/projectimages/:id
  # GET /project/:project_id/projectimages/:id.json
  def show   
    @project = Project.find(params[:project_id])
    @projectimage = @project.projectimages.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projectimage }
    end
  end
  
  # GET /projects/:project_id/projectimages/:id/edit
  def edit
    @project = Project.find(params[:project_id])
    @projectimage = @project.projectimages.find(params[:id])
  end
  
  # PUT /projects/:project_id/projectimages/:id/
  # PUT /projects/:project_id/projectimages/:id.json
  def update
    @project = Project.find(params[:project_id])
    @projectimage = @project.projectimages.find(params[:id])

    respond_to do |format|
      if @projectimage.update_attributes(params[:projectimage])
        format.html { redirect_to project_projectimage_path(@project, @projectimage), notice: 'Projectimage was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @projectimages.errors, status: :unprocessable_entity }
      end
    end
  end

end
