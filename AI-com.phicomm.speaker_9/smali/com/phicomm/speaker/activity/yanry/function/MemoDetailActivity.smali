.class public Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MemoDetailActivity.java"


# instance fields
.field private a:Lcom/unisound/lib/time/bean/NoteInfo;

.field private b:Lcom/phicomm/speaker/presenter/yanry/a/e;

.field tvContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/NoteInfo;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->a:Lcom/unisound/lib/time/bean/NoteInfo;

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->a:Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/NoteInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->b(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->a:Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-virtual {v1}, Lcom/unisound/lib/time/bean/NoteInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/e;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/e;-><init>(Lcom/phicomm/speaker/presenter/b/j;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003a

    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->a:Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-virtual {p1, p0, v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;Lcom/unisound/lib/time/bean/NoteInfo;)V

    return-void
.end method

.method delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09003f
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f00b3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f00a9

    .line 60
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/a;-><init>(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->d()V

    .line 54
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
