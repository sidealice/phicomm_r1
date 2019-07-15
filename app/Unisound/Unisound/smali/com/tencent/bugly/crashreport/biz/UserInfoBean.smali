.class public Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    .line 56
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    .line 64
    iput v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    .line 65
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 66
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    .line 54
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    .line 56
    const-string v2, "unknown"

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    .line 63
    iput v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    .line 64
    iput v4, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    .line 65
    iput-object v5, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 66
    iput-object v5, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    .line 93
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 94
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    .line 101
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
