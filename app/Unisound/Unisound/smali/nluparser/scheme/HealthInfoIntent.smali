.class public Lnluparser/scheme/HealthInfoIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;
    }
.end annotation


# instance fields
.field properties:Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "properties"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "properties"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties()Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/HealthInfoIntent;->properties:Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;

    return-object v0
.end method

.method public setProperties(Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;)V
    .locals 0
    .param p1, "properties"    # Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/HealthInfoIntent;->properties:Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;

    return-void
.end method
