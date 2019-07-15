.class public Lnluparser/scheme/SceneModeIntent$LightControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/SceneModeIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightControl"
.end annotation


# instance fields
.field brightness:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "brightness"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brightness"
    .end annotation
.end field

.field lightColor:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lightColor"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lightColor"
    .end annotation
.end field

.field lightEffectType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lightEffectType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lightEffectType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightness()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->brightness:Ljava/lang/String;

    return-object v0
.end method

.method public getLightColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->lightColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLightEffectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->lightEffectType:Ljava/lang/String;

    return-object v0
.end method

.method public setBrightness(Ljava/lang/String;)V
    .locals 0
    .param p1, "brightness"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->brightness:Ljava/lang/String;

    return-void
.end method

.method public setLightColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "lightColor"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->lightColor:Ljava/lang/String;

    return-void
.end method

.method public setLightEffectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "lightEffectType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent$LightControl;->lightEffectType:Ljava/lang/String;

    return-void
.end method
