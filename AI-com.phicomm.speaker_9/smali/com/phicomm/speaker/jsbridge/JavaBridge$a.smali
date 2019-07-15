.class Lcom/phicomm/speaker/jsbridge/JavaBridge$a;
.super Ljava/lang/Object;
.source "JavaBridge.java"

# interfaces
.implements Lcom/phicomm/speaker/jsbridge/JavaBridge$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/jsbridge/JavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/jsbridge/JavaBridge;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;->a:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;-><init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;->a:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$000(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
