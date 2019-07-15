.class public Lcom/unisound/passport/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x4b1

.field public static final b:I = 0x4b2

.field public static final c:I = 0x4b3

.field public static final d:I = 0x4b4

.field public static final e:I = 0x4b5

.field public static final f:I = 0x515

.field public static final g:I = 0x579

.field public static final h:Ljava/lang/String; = "USCPassport"

.field public static final i:Ljava/lang/String; = "retryInterval"

.field public static j:Ljava/lang/String; = null

.field public static final k:Ljava/lang/String; = "public_msg"

.field public static final l:Ljava/lang/String; = "result_type"

.field public static final m:Ljava/lang/String; = "result_json"

.field public static final n:Ljava/lang/String; = "event_type"

.field public static final o:Ljava/lang/String; = "event_time"

.field public static final p:Ljava/lang/String; = "error_type"

.field public static final q:Ljava/lang/String; = "error_msg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sensors/temperature"

    sput-object v0, Lcom/unisound/passport/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
