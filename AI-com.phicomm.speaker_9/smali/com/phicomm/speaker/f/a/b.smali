.class final synthetic Lcom/phicomm/speaker/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lcom/phicomm/speaker/b/d;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/phicomm/speaker/f/a/b;->a:I

    iput-wide p2, p0, Lcom/phicomm/speaker/f/a/b;->b:J

    iput-object p4, p0, Lcom/phicomm/speaker/f/a/b;->c:Lcom/phicomm/speaker/b/d;

    iput-object p5, p0, Lcom/phicomm/speaker/f/a/b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/phicomm/speaker/f/a/b;->a:I

    iget-wide v1, p0, Lcom/phicomm/speaker/f/a/b;->b:J

    iget-object v3, p0, Lcom/phicomm/speaker/f/a/b;->c:Lcom/phicomm/speaker/b/d;

    iget-object v4, p0, Lcom/phicomm/speaker/f/a/b;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/f/a/a;->b(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V

    return-void
.end method
