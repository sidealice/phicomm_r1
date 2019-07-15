.class public Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/HealthInfoIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesInfo"
.end annotation


# instance fields
.field metrics:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "metrics"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metrics"
    .end annotation
.end field

.field person:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "person"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "person"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetrics()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;->metrics:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;->person:Ljava/lang/String;

    return-object v0
.end method

.method public setMetrics(Ljava/lang/String;)V
    .locals 0
    .param p1, "metrics"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;->metrics:Ljava/lang/String;

    return-void
.end method

.method public setPerson(Ljava/lang/String;)V
    .locals 0
    .param p1, "person"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/HealthInfoIntent$PropertiesInfo;->person:Ljava/lang/String;

    return-void
.end method
