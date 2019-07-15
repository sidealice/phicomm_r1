.class final synthetic Lcom/phicomm/speaker/fragment/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/f;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/f;->a:Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;->a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
