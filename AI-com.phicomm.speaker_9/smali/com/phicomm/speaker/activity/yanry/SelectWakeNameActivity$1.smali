.class Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;
.super Lcom/phicomm/speaker/presenter/yanry/j;
.source "SelectWakeNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->j()V

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->c()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->setResult(I)V

    .line 62
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c_()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->i()V

    return-void
.end method
