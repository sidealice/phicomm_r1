.class public La/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/a/a/a;

.field public static final b:La/a/a/a/a;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/a;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, La/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/a;->a:La/a/a/a/a;

    new-instance v0, La/a/a/a/a;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, La/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/a/a;->b:La/a/a/a/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a;->c:Ljava/lang/String;

    return-void
.end method
