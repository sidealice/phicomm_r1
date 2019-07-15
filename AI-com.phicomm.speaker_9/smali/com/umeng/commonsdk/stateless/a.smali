.class public Lcom/umeng/commonsdk/stateless/a;
.super Ljava/lang/Object;
.source "UMSLConfig.java"


# static fields
.field public static a:Ljava/lang/String; = "native"

.field public static b:Ljava/lang/String; = ""

.field public static c:J = 0x200000L

.field public static d:J = 0x32000L

.field public static final e:Ljava/lang/String; = "stateless"

.field public static f:Ljava/lang/String; = "https://plbslog.umeng.com"

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = "https://ouplog.umeng.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
