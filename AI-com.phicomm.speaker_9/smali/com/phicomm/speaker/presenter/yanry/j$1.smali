.class Lcom/phicomm/speaker/presenter/yanry/j$1;
.super Lcom/phicomm/speaker/model/common/f;
.source "SelectWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$1;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 47
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$1;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$1;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Z)V

    const-string p1, "\u8bf7\u6c42\u8d85\u65f6"

    .line 54
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$1;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/presenter/yanry/p;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$1;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/presenter/yanry/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/p;->a()V

    :cond_1
    return-void
.end method
