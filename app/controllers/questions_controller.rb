class QuestionsController < ApplicationController
    #質問一覧表示
    def index
        @questions = Question.all
    end

    #質問詳細表示
    def show
        @question = Question.find(params[:id])
    end

    #  質問の作成
    def new
        @question = Question.new
    end

    #質問の登録
    def create
        @question = Question.new(question_params)
        @question.save
        redirect_to @question
    end

    # 質問の編集
    def edit

    end

    #質問の更新
    def update
    end

    #質問の削除
    def destroy
    end

    private 
    def question_params
        params.require(:question).permit(:title, :name, :content)
    end
end
