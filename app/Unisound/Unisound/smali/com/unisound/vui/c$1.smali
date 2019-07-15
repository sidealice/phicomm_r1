.class Lcom/unisound/vui/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/client/SpeechSynthesizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/c;


# direct methods
.method constructor <init>(Lcom/unisound/vui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/c$1;->a:Lcom/unisound/vui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "errorMSG"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/c$1;->a:Lcom/unisound/vui/c;

    invoke-static {v0}, Lcom/unisound/vui/c;->a(Lcom/unisound/vui/c;)Lcom/unisound/vui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/c$1;->a:Lcom/unisound/vui/c;

    invoke-static {v0}, Lcom/unisound/vui/c;->a(Lcom/unisound/vui/c;)Lcom/unisound/vui/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/d;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/c$1;->a:Lcom/unisound/vui/c;

    invoke-static {v0}, Lcom/unisound/vui/c;->a(Lcom/unisound/vui/c;)Lcom/unisound/vui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/c$1;->a:Lcom/unisound/vui/c;

    invoke-static {v0}, Lcom/unisound/vui/c;->a(Lcom/unisound/vui/c;)Lcom/unisound/vui/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/d;->onEvent(I)V

    :cond_0
    return-void
.end method
