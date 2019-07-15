.class Lcom/unisound/ant/device/DeviceCenterHandler$1;
.super Ljava/lang/Object;
.source "DeviceCenterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/DeviceCenterHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

.field final synthetic val$evt:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/DeviceCenterHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/DeviceCenterHandler;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/unisound/ant/device/DeviceCenterHandler$1;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    iput-object p2, p0, Lcom/unisound/ant/device/DeviceCenterHandler$1;->val$evt:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 165
    iget-object v4, p0, Lcom/unisound/ant/device/DeviceCenterHandler$1;->val$evt:Ljava/lang/Object;

    check-cast v4, Lnluparser/scheme/NLU;

    .line 166
    .local v4, "nlu":Lnluparser/scheme/NLU;
    invoke-virtual {v4}, Lnluparser/scheme/NLU;->getAsrResult()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "result":Ljava/lang/String;
    iget-object v9, p0, Lcom/unisound/ant/device/DeviceCenterHandler$1;->this$0:Lcom/unisound/ant/device/DeviceCenterHandler;

    invoke-static {v9}, Lcom/unisound/ant/device/DeviceCenterHandler;->access$000(Lcom/unisound/ant/device/DeviceCenterHandler;)Lnluparser/MixtureProcessor;

    move-result-object v9

    invoke-virtual {v9, v8}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .line 168
    .local v0, "mixture":Lnluparser/scheme/Mixture;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 169
    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v5

    .line 170
    .local v5, "nluList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NLU;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 171
    const-string v9, "DeviceCenterHandler"

    const-string v10, "nluList size is 0"

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v5    # "nluList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NLU;>;"
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v5    # "nluList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NLU;>;"
    :cond_1
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/NLU;

    .line 175
    .local v7, "reportNlu":Lnluparser/scheme/NLU;
    invoke-virtual {v7}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v9

    invoke-virtual {v9}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 176
    invoke-virtual {v7}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v9

    invoke-virtual {v9}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v6

    .line 177
    .local v6, "nluResult":Lnluparser/scheme/Result;
    instance-of v9, v6, Lnluparser/scheme/MusicResult;

    if-eqz v9, :cond_2

    .line 178
    check-cast v6, Lnluparser/scheme/MusicResult;

    .end local v6    # "nluResult":Lnluparser/scheme/Result;
    invoke-virtual {v6}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object v3

    .line 179
    .local v3, "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v11, :cond_0

    .line 180
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/MusicResult$Music;

    .line 181
    .local v1, "musicFirst":Lnluparser/scheme/MusicResult$Music;
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 182
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v1    # "musicFirst":Lnluparser/scheme/MusicResult$Music;
    .end local v3    # "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .restart local v6    # "nluResult":Lnluparser/scheme/Result;
    :cond_2
    instance-of v9, v6, Lnluparser/scheme/AudioResult;

    if-eqz v9, :cond_0

    .line 185
    check-cast v6, Lnluparser/scheme/AudioResult;

    .end local v6    # "nluResult":Lnluparser/scheme/Result;
    invoke-virtual {v6}, Lnluparser/scheme/AudioResult;->getPlaylist()Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v11, :cond_0

    .line 187
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/AudioResult$Music;

    .line 188
    .local v1, "musicFirst":Lnluparser/scheme/AudioResult$Music;
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
