.class public Lnluparser/scheme/AudioIntent;
.super Lnluparser/scheme/MusicIntent;


# instance fields
.field category:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "category"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tag"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnluparser/scheme/MusicIntent;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/AudioIntent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/AudioIntent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/AudioIntent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntent;->category:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntent;->name:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntent;->tag:Ljava/lang/String;

    return-void
.end method
