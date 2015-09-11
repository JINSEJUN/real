class HomeController < ApplicationController
  def one
    @posts2 = Post.all
  
      
  end

  def two
    @posts2 = Post.all    

  end

  def three
    @posts2 = Post.all   
    @result = Post.where(:univ => params[:search])
  end
  
  def goo
    
  end
  
  def test1
    @posts2 = Post.all

  end
  
  def test2
    @posts2 = Post.all
    
  end
  
  def test3
    @posts2 = Post.all
  
  end
  
    
  def test4
      @posts2 = Post.all    
  
  end
  
  def write
    post = Post.new
        post.email = params[:email]
        post.sex = params[:sex]
        post.univ = params[:univ]
        post.place = params[:place]
        post.number = params[:number]
        post.content = params[:content]
        post.save
     redirect_to '/'
  
  def reply
      @detail = Post.find(params[:id]) 
      
  end

  
  def write_reply
    # 해당 게시물의 댓글들의 이메일들 중 하나가 내 이메일이랑 일치했을 때 
        my_reply = Reply.new
        my_reply.email = params[:email]
        my_reply.post_id = params[:post_id]
        my_reply.content = params[:myreply]
        my_reply.user_id = current_user.id
        
        unless(Post.find(params[:post_id]).replies.where(user_id: current_user.id).first) #사실 이게 될런지 안될런지 모르겠음 ㅋㅋ 근데 안되면 each do로 하나씩 검사해주면 될듯
             my_reply.save
        else
            #나중에 자바스크립트 alert넣어주기!(이미 댓글을 등록하셨습니다)
        end
      redirect_to(:back)
  end
    
    
  
  end
end