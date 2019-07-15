.class Lcom/phicomm/speaker/presenter/j$10;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/msgcenter/bean/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$10;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$10;->a:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/i;->c(I)V

    :cond_1
    return-void
.end method

.method public a(ILcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$10;->a:Z

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 216
    :cond_0
    new-instance p1, Lcom/phicomm/speaker/e/b/l;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/l;-><init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/p;->a(Lcom/phicomm/speaker/e/b/l;)V

    .line 217
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$10;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->a(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p2, Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$10;->a(ILcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    return-void
.end method
