.class Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;
.super Ljava/lang/Object;
.source "DefaultChatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;->this$0:Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

    iput-object p2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;->this$0:Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->access$000(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V

    .line 90
    return-void
.end method
