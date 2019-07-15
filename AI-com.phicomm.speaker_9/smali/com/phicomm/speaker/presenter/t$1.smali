.class Lcom/phicomm/speaker/presenter/t$1;
.super Lcom/phicomm/speaker/net/a/b;
.source "VoiceCommandPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/t;->a(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/VoiceCommandsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/t;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/VoiceCommandsBean;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->a(Lcom/phicomm/speaker/presenter/t;)V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/s;->a(Lcom/phicomm/speaker/bean/VoiceCommandsBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/phicomm/speaker/bean/VoiceCommandsBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/t$1;->a(Lcom/phicomm/speaker/bean/VoiceCommandsBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->c(Lcom/phicomm/speaker/presenter/t;)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$1;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
