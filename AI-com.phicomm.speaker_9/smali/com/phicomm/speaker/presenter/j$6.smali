.class Lcom/phicomm/speaker/presenter/j$6;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;[Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/j$6;->a:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 632
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 634
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->u()V

    :cond_0
    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 4

    .line 606
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    const-class p2, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/e/b/l;

    if-eqz p1, :cond_1

    .line 608
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 609
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 613
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/j$6;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 614
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 624
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 625
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$6;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->a()V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 602
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$6;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
