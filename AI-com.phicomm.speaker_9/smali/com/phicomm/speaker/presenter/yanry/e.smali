.class final synthetic Lcom/phicomm/speaker/presenter/yanry/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a$2;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/e;->a:Lcom/phicomm/speaker/presenter/yanry/a$2;

    iput p2, p0, Lcom/phicomm/speaker/presenter/yanry/e;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/e;->a:Lcom/phicomm/speaker/presenter/yanry/a$2;

    iget v1, p0, Lcom/phicomm/speaker/presenter/yanry/e;->b:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a$2;->b(I)Z

    move-result v0

    return v0
.end method
