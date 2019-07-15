.class Lcom/phicomm/speaker/presenter/j$7;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->b([Ljava/lang/String;)V
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

    .line 647
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/j$7;->a:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 677
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 679
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->v()V

    :cond_0
    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 4

    .line 651
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    const-class p2, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/e/b/l;

    if-eqz p1, :cond_1

    .line 653
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 654
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 658
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/j$7;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 669
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 670
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$7;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->b()V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 647
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$7;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
