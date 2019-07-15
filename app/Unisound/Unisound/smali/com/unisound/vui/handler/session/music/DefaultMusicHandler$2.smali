.class Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;
.super Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
.source "DefaultMusicHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 747
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;"
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;"
    const/4 v3, 0x1

    .line 749
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$400(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$300(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$500(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$300(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    goto :goto_0
.end method
