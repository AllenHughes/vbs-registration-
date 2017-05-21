class KidsController < ApplicationController
  helper ApplicationHelper
  
  #These methods are for working with kids from the registration perspective
  def register
    #Call render the fancy registration form
    @kid = Kid.new
    render layout: "public"
  end
  
  def confirm
    @kid = Kid.create(kid_params)
    if @kid.save
      render layout: "public"
    else
      flash.now[:warning] = "something went wrong"
      render 'register'
    end
  end
  private
  
  def kid_params
    params.require(:kid).permit(:first_name,
                                :last_name,
                                :birthdate,
                                :last_grade_id,
                                :gender,
                                :address,
                                :city,
                                :state,
                                :zipcode,
                                :parent_name,
                                :parent_email,
                                :parent_phone,
                                :church_member,
                                :invited_by,
                                :tshirt_size_id,
                                :allergies,
                                :allergies_notes,
                                :medical_issues,
                                :medical_issues_notes,
                                :buddy_request,
                                :notes,
                                :pickupper_1_name,
                                :pickupper_1_phone,
                                :pickupper_2_name,
                                :pickupper_2_phone,
                                :pickupper_3_name,
                                :pickupper_3_phone,
                                :highlight,
                                :can_photograph,
                                :group_id)
  end
end
