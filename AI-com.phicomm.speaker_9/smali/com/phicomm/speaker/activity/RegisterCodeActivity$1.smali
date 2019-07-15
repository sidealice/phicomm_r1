.class Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;
.super Ljava/lang/Object;
.source "RegisterCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/RegisterCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)I

    move-result v0

    const v1, 0x7f06006f

    if-gtz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    const v3, 0x7f0f00de

    :goto_0
    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    const v3, 0x7f0f00dd

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    .line 56
    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 55
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " S  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;I)I

    .line 62
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)I

    move-result v1

    const-string v2, "REGISTER_CODE_TIME"

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(ILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->c(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
