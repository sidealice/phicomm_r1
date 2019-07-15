.class public Lnluparser/scheme/AlarmIntent;
.super Ljava/lang/Object;
.source "AlarmIntent.java"

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final D1:Ljava/lang/String; = "D1"

.field public static final D2:Ljava/lang/String; = "D2"

.field public static final D3:Ljava/lang/String; = "D3"

.field public static final D4:Ljava/lang/String; = "D4"

.field public static final D5:Ljava/lang/String; = "D5"

.field public static final D6:Ljava/lang/String; = "D6"

.field public static final D7:Ljava/lang/String; = "D7"

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final TYPE_ALARM:I = 0x0

.field public static final TYPE_COUNT_DOWN:I = 0x1

.field public static final WEEKEND:Ljava/lang/String; = "WEEKEND"

.field public static final WORKDAY:Ljava/lang/String; = "WORKDAY"


# instance fields
.field countDown:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "countDownTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countDownTime"
    .end annotation
.end field

.field date:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "date"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field label:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "label"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field repeatDate:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "repeatDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatDate"
    .end annotation
.end field

.field time:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lnluparser/scheme/AlarmIntent;->type:I

    return-void
.end method


# virtual methods
.method public getCountDown()I
    .locals 1

    .line 43
    iget v0, p0, Lnluparser/scheme/AlarmIntent;->countDown:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lnluparser/scheme/AlarmIntent;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lnluparser/scheme/AlarmIntent;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatDate()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lnluparser/scheme/AlarmIntent;->repeatDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 75
    iget-object v0, p0, Lnluparser/scheme/AlarmIntent;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 51
    iget v0, p0, Lnluparser/scheme/AlarmIntent;->type:I

    return v0
.end method

.method public setCountDown(I)V
    .locals 0

    .line 47
    iput p1, p0, Lnluparser/scheme/AlarmIntent;->countDown:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iput-object p1, p0, Lnluparser/scheme/AlarmIntent;->date:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    iput-object p1, p0, Lnluparser/scheme/AlarmIntent;->label:Ljava/lang/String;

    return-void
.end method

.method public setRepeatDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lnluparser/scheme/AlarmIntent;->repeatDate:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    iput-object p1, p0, Lnluparser/scheme/AlarmIntent;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lnluparser/scheme/AlarmIntent;->type:I

    return-void
.end method
