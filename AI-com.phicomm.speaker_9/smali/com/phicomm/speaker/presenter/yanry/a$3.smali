.class Lcom/phicomm/speaker/presenter/yanry/a$3;
.super Lcom/phicomm/speaker/presenter/yanry/p;
.source "CustomWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/p;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(ILjava/lang/String;)Z
    .locals 1

    .line 100
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->c(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/f;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a$3;->a:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2}, Lcom/phicomm/speaker/presenter/yanry/f;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method
