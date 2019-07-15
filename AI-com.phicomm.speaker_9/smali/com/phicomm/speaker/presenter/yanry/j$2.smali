.class Lcom/phicomm/speaker/presenter/yanry/j$2;
.super Lcom/phicomm/speaker/presenter/yanry/p;
.source "SelectWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/j;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/p;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(ILjava/lang/String;)Z
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/l;->a(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 69
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Z)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Z)V

    :goto_0
    return v0
.end method

.method protected b(I)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/j;->b(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/k;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/j$2;->a:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2}, Lcom/phicomm/speaker/presenter/yanry/k;-><init>(Lcom/phicomm/speaker/presenter/yanry/j$2;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method
