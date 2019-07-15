.class public Lnluparser/scheme/ReminderIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/ReminderIntent$Event;
    }
.end annotation


# static fields
.field public static final D1:Ljava/lang/String; = "D1"

.field public static final D2:Ljava/lang/String; = "D2"

.field public static final D3:Ljava/lang/String; = "D3"

.field public static final D4:Ljava/lang/String; = "D4"

.field public static final D5:Ljava/lang/String; = "D5"

.field public static final D6:Ljava/lang/String; = "D6"

.field public static final D7:Ljava/lang/String; = "D7"

.field public static final DAY:Ljava/lang/String; = "DAY"

.field public static final MONTH:Ljava/lang/String; = "MONTH"

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final WEEK:Ljava/lang/String; = "WEEK"

.field public static final WEEKEND:Ljava/lang/String; = "WEEKEND"

.field public static final WORKDAY:Ljava/lang/String; = "WORKDAY"

.field public static final YEAR:Ljava/lang/String; = "YEAR"


# instance fields
.field content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field dateTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dateTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dateTime"
    .end annotation
.end field

.field event:Lnluparser/scheme/ReminderIntent$Event;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "event"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation
.end field

.field eventTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "eventTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventTime"
    .end annotation
.end field

.field isSubscribe:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isSubscribe"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSubscribe"
    .end annotation
.end field

.field repeatType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "repeatType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatType"
    .end annotation
.end field

.field topic:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topic"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic"
    .end annotation
.end field

.field triggerType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "triggerType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "triggerType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Lnluparser/scheme/ReminderIntent$Event;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->event:Lnluparser/scheme/ReminderIntent$Event;

    return-object v0
.end method

.method public getEventTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->eventTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->repeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent;->triggerType:Ljava/lang/String;

    return-object v0
.end method

.method public isSubscribe()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/ReminderIntent;->isSubscribe:Z

    return v0
.end method
