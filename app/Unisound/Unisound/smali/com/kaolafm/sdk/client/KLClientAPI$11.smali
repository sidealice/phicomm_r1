.class Lcom/kaolafm/sdk/client/KLClientAPI$11;
.super Lcom/kaolafm/sdk/client/SearchResult;
.source "KLClientAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$11;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$11;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/SearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 1
    .param p1, "errCode"    # Lcom/kaolafm/sdk/client/ErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$11;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-virtual {v0, p1}, Lcom/kaolafm/sdk/client/SearchResultV2;->onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    .line 481
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v3, "searchDatas":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/SearchData;>;"
    if-eqz p1, :cond_1

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaolafm/sdk/client/Music;

    .line 466
    .local v1, "music":Lcom/kaolafm/sdk/client/Music;
    new-instance v2, Lcom/kaolafm/sdk/client/SearchData;

    invoke-direct {v2}, Lcom/kaolafm/sdk/client/SearchData;-><init>()V

    .line 467
    .local v2, "searchData":Lcom/kaolafm/sdk/client/SearchData;
    iget-wide v4, v1, Lcom/kaolafm/sdk/client/Music;->audioId:J

    invoke-virtual {v2, v4, v5}, Lcom/kaolafm/sdk/client/SearchData;->setId(J)V

    .line 468
    iget-object v4, v1, Lcom/kaolafm/sdk/client/Music;->audioName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/kaolafm/sdk/client/SearchData;->setName(Ljava/lang/String;)V

    .line 469
    iget-object v4, v1, Lcom/kaolafm/sdk/client/Music;->picUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/kaolafm/sdk/client/SearchData;->setImg(Ljava/lang/String;)V

    .line 470
    sget-object v4, Lcom/kaolafm/sdk/client/SearchType;->AUDIO:Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v4}, Lcom/kaolafm/sdk/client/SearchType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kaolafm/sdk/client/SearchData;->setType(I)V

    .line 472
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    .end local v1    # "music":Lcom/kaolafm/sdk/client/Music;
    .end local v2    # "searchData":Lcom/kaolafm/sdk/client/SearchData;
    :cond_0
    iget-object v4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$11;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-virtual {v4, v3}, Lcom/kaolafm/sdk/client/SearchResultV2;->onSuccess(Ljava/util/List;)V

    .line 476
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
