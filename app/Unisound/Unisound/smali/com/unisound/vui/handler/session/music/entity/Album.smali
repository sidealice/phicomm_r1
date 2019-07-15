.class public Lcom/unisound/vui/handler/session/music/entity/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unisound/vui/handler/session/music/entity/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "albumId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumId"
    .end annotation
.end field

.field private albumLogo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "albumLogo"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumLogo"
    .end annotation
.end field

.field private albumName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "albumName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumName"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private musicCount:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicCount"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicCount"
    .end annotation
.end field

.field private publishTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "publishTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publishTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Album$1;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Album$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/entity/Album;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "musicCount"    # I
    .param p4, "albumLogo"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "publishTime"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    .line 27
    iput-object p4, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    .line 29
    iput-wide p6, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/entity/Album;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/entity/Album;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Album;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    .line 112
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    return v0
.end method

.method public getPublishTime()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    return-wide v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setAlbumLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumLogo"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMusicCount(I)V
    .locals 0
    .param p1, "musicCount"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    .line 54
    return-void
.end method

.method public setPublishTime(J)V
    .locals 1
    .param p1, "publishTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album [albumName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->musicCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->albumLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/music/entity/Album;->publishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    return-void
.end method
