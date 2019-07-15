.class public Lcom/unisound/vui/handler/session/music/entity/Announcer;
.super Ljava/lang/Object;
.source "Announcer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unisound/vui/handler/session/music/entity/Announcer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private announcerId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "announcerId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcerId"
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "avatarUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarUrl"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nickname"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field private verified:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "verified"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verified"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Announcer$1;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Announcer$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "announcerId"    # J
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "avatarUrl"    # Ljava/lang/String;
    .param p5, "verified"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    .line 24
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/entity/Announcer;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Announcer;->readFromParacel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParacel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    .line 88
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 89
    .local v0, "temp":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 90
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnouncerId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    return-wide v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    return v0
.end method

.method public setAnnouncerId(J)V
    .locals 1
    .param p1, "announcerId"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    .line 35
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Announcer [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->announcerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/music/entity/Announcer;->verified:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 82
    return-void
.end method
