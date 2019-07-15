.class public La/a/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/a/a/d;

.field public static final b:La/a/a/a/d;

.field public static final c:La/a/a/a/d;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/d;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, La/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/d;->a:La/a/a/a/d;

    new-instance v0, La/a/a/a/d;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, La/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/d;->b:La/a/a/a/d;

    new-instance v0, La/a/a/a/d;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, La/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/d;->c:La/a/a/a/d;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/d;->d:Ljava/lang/String;

    return-void
.end method
