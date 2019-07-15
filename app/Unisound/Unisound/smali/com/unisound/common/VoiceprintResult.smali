.class public Lcom/unisound/common/VoiceprintResult;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/VoiceprintResult;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/VoiceprintResult;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/VoiceprintResult;->d:F

    iput-object p1, p0, Lcom/unisound/common/VoiceprintResult;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unisound/common/VoiceprintResult;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/unisound/common/VoiceprintResult;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/unisound/common/VoiceprintResult;->b:I

    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/unisound/common/VoiceprintResult;->c:Ljava/lang/String;

    const-string v2, "score"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "score"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/unisound/common/VoiceprintResult;->d:F

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_2

    :cond_4
    const-string v2, "0"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "}{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/unisound/common/VoiceprintResult;->d:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/VoiceprintResult;->b:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/VoiceprintResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/VoiceprintResult;->c:Ljava/lang/String;

    return-object v0
.end method
