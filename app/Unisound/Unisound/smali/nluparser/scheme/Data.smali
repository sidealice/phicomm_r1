.class public Lnluparser/scheme/Data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lnluparser/scheme/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field header:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "header"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field headerTts:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "headerTts"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headerTts"
    .end annotation
.end field

.field result:Lnluparser/scheme/Result;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "result"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Data;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTts()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Data;->headerTts:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lnluparser/scheme/Result;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Data;->result:Lnluparser/scheme/Result;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/Data;, "Lnluparser/scheme/Data<TR;>;"
    iput-object p1, p0, Lnluparser/scheme/Data;->header:Ljava/lang/String;

    return-void
.end method

.method public setHeaderTts(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerTts"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lnluparser/scheme/Data;, "Lnluparser/scheme/Data<TR;>;"
    iput-object p1, p0, Lnluparser/scheme/Data;->headerTts:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lnluparser/scheme/Result;)V
    .locals 0
    .param p1    # Lnluparser/scheme/Result;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/Data;, "Lnluparser/scheme/Data<TR;>;"
    .local p1, "result":Lnluparser/scheme/Result;, "TR;"
    iput-object p1, p0, Lnluparser/scheme/Data;->result:Lnluparser/scheme/Result;

    return-void
.end method
