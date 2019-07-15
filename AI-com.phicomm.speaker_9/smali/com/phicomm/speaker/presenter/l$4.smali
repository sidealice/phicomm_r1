.class Lcom/phicomm/speaker/presenter/l$4;
.super Lcom/phicomm/speaker/net/a/a;
.source "OtaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/l;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/l;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->b(Lcom/phicomm/speaker/presenter/l;)V

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/l;->b(Lcom/phicomm/speaker/presenter/l;)V

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/l$4;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/l;->a()V

    :cond_0
    return-void
.end method
