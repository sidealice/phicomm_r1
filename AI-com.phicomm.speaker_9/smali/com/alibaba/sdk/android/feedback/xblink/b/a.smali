.class public final enum Lcom/alibaba/sdk/android/feedback/xblink/b/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

.field public static final enum b:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

.field public static final enum c:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

.field private static final synthetic f:[Lcom/alibaba/sdk/android/feedback/xblink/b/a;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    const-string v1, "ONLINE"

    const-string v2, "m"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alibaba/sdk/android/feedback/xblink/b/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    const-string v1, "PRE"

    const-string v2, "wapa"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alibaba/sdk/android/feedback/xblink/b/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->b:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    const-string v1, "DAILY"

    const-string v2, "waptest"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/sdk/android/feedback/xblink/b/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->c:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->b:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->c:Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->f:[Lcom/alibaba/sdk/android/feedback/xblink/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->d:I

    iput-object p4, p0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".taobao.com/rest/api3.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://h5."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".taobao.com/bizcache/2/windvane/config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
