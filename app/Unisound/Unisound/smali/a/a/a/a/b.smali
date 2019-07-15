.class public final La/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/a/d;

.field private b:La/a/a/a/a;

.field private c:La/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, La/a/a/a/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, La/a/a/a/d;->a:La/a/a/a/d;

    iput-object v0, p0, La/a/a/a/b;->a:La/a/a/a/d;

    sget-object v0, La/a/a/a/a;->b:La/a/a/a/a;

    iput-object v0, p0, La/a/a/a/b;->b:La/a/a/a/a;

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    iput-object v0, p0, La/a/a/a/b;->c:La/a/a/a/c;

    return-void
.end method

.method public a(La/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/b;->b:La/a/a/a/a;

    return-void
.end method

.method public a(La/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/b;->c:La/a/a/a/c;

    return-void
.end method

.method public b()La/a/a/a/a;
    .locals 1

    iget-object v0, p0, La/a/a/a/b;->b:La/a/a/a/a;

    return-object v0
.end method

.method public c()La/a/a/a/c;
    .locals 1

    iget-object v0, p0, La/a/a/a/b;->c:La/a/a/a/c;

    return-object v0
.end method

.method public d()La/a/a/a/d;
    .locals 1

    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/d;

    return-object v0
.end method
