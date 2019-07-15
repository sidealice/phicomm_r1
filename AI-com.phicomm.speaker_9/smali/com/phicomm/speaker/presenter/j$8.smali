.class Lcom/phicomm/speaker/presenter/j$8;
.super Lcom/phicomm/speaker/net/a/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/player/LyricResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$8;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/player/LyricResult;)V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$8;->a:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/i;->a(Lcom/phicomm/speaker/bean/player/LyricResult;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/phicomm/speaker/bean/player/LyricResult;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/j$8;->a(Lcom/phicomm/speaker/bean/player/LyricResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 148
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$8;->a:Z

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$8;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
