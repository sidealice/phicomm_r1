.class public La/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/a/a/c;

.field public static final b:La/a/a/a/c;

.field public static final c:La/a/a/a/c;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/c;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, La/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    new-instance v0, La/a/a/a/c;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, La/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/c;->b:La/a/a/a/c;

    new-instance v0, La/a/a/a/c;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, La/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/c;->c:La/a/a/a/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/c;->d:Ljava/lang/String;

    return-void
.end method
