.class Lcom/unisound/vui/handler/filter/NLUDispatcher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic b:Lcom/unisound/vui/handler/filter/NLUDispatcher;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->b:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    iput-object p2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->a:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NLUDispatcher"

    const-string v1, "process asr or nlu result timeout, dispatch network error nlu "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->b:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    const-string v1, "-90002"

    invoke-static {v0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    const-string v1, "no network"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->b:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    iget-object v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->a:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-static {v1, v2, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    return-void
.end method
