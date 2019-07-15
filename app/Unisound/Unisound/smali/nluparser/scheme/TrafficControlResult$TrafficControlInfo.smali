.class public Lnluparser/scheme/TrafficControlResult$TrafficControlInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/TrafficControlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficControlInfo"
.end annotation


# instance fields
.field forbiddenDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "forbiddenDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forbiddenDate"
    .end annotation
.end field

.field forbiddenTailNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "forbiddenTailNumber"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forbiddenTailNumber"
    .end annotation
.end field

.field week:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "week"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
