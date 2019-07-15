.class public Lcom/unisound/lib/msgcenter/bean/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# instance fields
.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->info:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->info:Ljava/util/List;

    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->pageCount:Ljava/lang/String;

    return-void
.end method
