.class public Lnluparser/scheme/NLU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lnluparser/scheme/Intent;",
        "R::",
        "Lnluparser/scheme/Result;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# instance fields
.field asrResult:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "asrResult"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asrResult"
    .end annotation
.end field

.field code:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "code"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field data:Lnluparser/scheme/Data;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnluparser/scheme/Data",
            "<TR;>;"
        }
    .end annotation
.end field

.field error:Lnluparser/scheme/Error;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "error"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field extraFlag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "extraFlag"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraFlag"
    .end annotation
.end field

.field gender:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "gender"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field general:Lnluparser/scheme/General;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "general"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "general"
    .end annotation
.end field

.field history:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "history"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "history"
    .end annotation
.end field

.field html5Url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "html5Url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "html5Url"
    .end annotation
.end field

.field iotUniJson:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "iotUniJson"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iotUniJson"
    .end annotation
.end field

.field isLocalNLU:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isLocalNLU"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isLocalNLU"
    .end annotation
.end field

.field isNeedAbandonNlu:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isNeedAbandonNlu"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNeedAbandonNlu"
    .end annotation
.end field

.field isQueenMessage:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isQueenMessage"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isQueenMessage"
    .end annotation
.end field

.field responseCode:I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rc"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc"
    .end annotation
.end field

.field responseId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "responseId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseId"
    .end annotation
.end field

.field semantic:Lnluparser/scheme/Semantic;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "semantic"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "semantic"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnluparser/scheme/Semantic",
            "<TI;>;"
        }
    .end annotation
.end field

.field service:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "service"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field time:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lnluparser/scheme/NLU;->compareTo(Lnluparser/scheme/NLU;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnluparser/scheme/NLU;)I
    .locals 4
    .param p1, "another"    # Lnluparser/scheme/NLU;

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getAsrResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NLU;->asrResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lnluparser/scheme/Data;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/Data",
            "<TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->data:Lnluparser/scheme/Data;

    return-object v0
.end method

.method public getError()Lnluparser/scheme/Error;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->error:Lnluparser/scheme/Error;

    return-object v0
.end method

.method public getExtraFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NLU;->extraFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneral()Lnluparser/scheme/General;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->general:Lnluparser/scheme/General;

    return-object v0
.end method

.method public getHistory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->history:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml5Url()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->html5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getIotUniJson()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NLU;->iotUniJson:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget v0, p0, Lnluparser/scheme/NLU;->responseCode:I

    return v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public getSemantic()Lnluparser/scheme/Semantic;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnluparser/scheme/Semantic",
            "<TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->semantic:Lnluparser/scheme/Semantic;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NLU;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lnluparser/scheme/NLU;->time:J

    return-wide v0
.end method

.method public isLocalNLU()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/NLU;->isLocalNLU:Z

    return v0
.end method

.method public isNeedAbandonNlu()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/NLU;->isNeedAbandonNlu:Z

    return v0
.end method

.method public isQueenMessage()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/NLU;->isQueenMessage:Z

    return v0
.end method

.method public setAsrResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->asrResult:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lnluparser/scheme/Data;)V
    .locals 0
    .param p1    # Lnluparser/scheme/Data;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Data",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    .local p1, "data":Lnluparser/scheme/Data;, "Lnluparser/scheme/Data<TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->data:Lnluparser/scheme/Data;

    return-void
.end method

.method public setError(Lnluparser/scheme/Error;)V
    .locals 0
    .param p1, "error"    # Lnluparser/scheme/Error;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->error:Lnluparser/scheme/Error;

    return-void
.end method

.method public setExtraFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraFlag"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->extraFlag:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGeneral(Lnluparser/scheme/General;)V
    .locals 0
    .param p1, "general"    # Lnluparser/scheme/General;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->general:Lnluparser/scheme/General;

    return-void
.end method

.method public setHistory(Ljava/lang/String;)V
    .locals 0
    .param p1, "history"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->history:Ljava/lang/String;

    return-void
.end method

.method public setHtml5Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "html5Url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->html5Url:Ljava/lang/String;

    return-void
.end method

.method public setIotUniJson(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "iotUniJson"    # Lcom/google/gson/JsonObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->iotUniJson:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setLocalNLU(Z)V
    .locals 0
    .param p1, "localNLU"    # Z

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-boolean p1, p0, Lnluparser/scheme/NLU;->isLocalNLU:Z

    return-void
.end method

.method public setNeedAbandonNlu(Z)V
    .locals 0
    .param p1, "needAbandonNlu"    # Z

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-boolean p1, p0, Lnluparser/scheme/NLU;->isNeedAbandonNlu:Z

    return-void
.end method

.method public setQueenMessage(Z)V
    .locals 0
    .param p1, "queenMessage"    # Z

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-boolean p1, p0, Lnluparser/scheme/NLU;->isQueenMessage:Z

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput p1, p0, Lnluparser/scheme/NLU;->responseCode:I

    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->responseId:Ljava/lang/String;

    return-void
.end method

.method public setSemantic(Lnluparser/scheme/Semantic;)V
    .locals 0
    .param p1    # Lnluparser/scheme/Semantic;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Semantic",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    .local p1, "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<TI;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->semantic:Lnluparser/scheme/Semantic;

    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->service:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/NLU;->text:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .local p0, "this":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TR;>;"
    iput-wide p1, p0, Lnluparser/scheme/NLU;->time:J

    return-void
.end method
