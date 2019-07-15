.class public Lnluparser/scheme/ReminderIntent$Event;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/ReminderIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field location:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "location"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
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

.field startTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "startTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startTime"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent$Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent$Event;->person:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent$Event;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ReminderIntent$Event;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ReminderIntent$Event;->location:Ljava/lang/String;

    return-void
.end method

.method public setPerson(Ljava/lang/String;)V
    .locals 0
    .param p1, "person"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ReminderIntent$Event;->person:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ReminderIntent$Event;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ReminderIntent$Event;->topic:Ljava/lang/String;

    return-void
.end method
