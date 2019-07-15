.class Lcom/unisound/lib/news/NewsStateMgr$1;
.super Lcom/google/gson/a/a;
.source "NewsStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/news/NewsStateMgr;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/a/a<",
        "Lcom/unisound/lib/msgcenter/bean/PlayingInfo<",
        "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/news/NewsStateMgr;


# direct methods
.method constructor <init>(Lcom/unisound/lib/news/NewsStateMgr;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/unisound/lib/news/NewsStateMgr$1;->this$0:Lcom/unisound/lib/news/NewsStateMgr;

    invoke-direct {p0}, Lcom/google/gson/a/a;-><init>()V

    return-void
.end method
