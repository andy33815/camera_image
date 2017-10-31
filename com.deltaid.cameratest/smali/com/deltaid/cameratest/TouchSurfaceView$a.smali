.class Lcom/deltaid/cameratest/TouchSurfaceView$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deltaid/cameratest/TouchSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/TouchSurfaceView;


# direct methods
.method private constructor <init>(Lcom/deltaid/cameratest/TouchSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deltaid/cameratest/TouchSurfaceView;Lcom/deltaid/cameratest/TouchSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deltaid/cameratest/TouchSurfaceView$a;-><init>(Lcom/deltaid/cameratest/TouchSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v3, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    mul-float/2addr v3, v0

    iput v3, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v3, v3, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    iput v2, v0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v0, v0, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    div-float/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->k:F

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->l:F

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v3, v3, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/TouchSurfaceView;->a()V

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v3, v3, Lcom/deltaid/cameratest/TouchSurfaceView;->e:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v2, v2, Lcom/deltaid/cameratest/TouchSurfaceView;->e:F

    iput v2, v0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget v0, v0, Lcom/deltaid/cameratest/TouchSurfaceView;->e:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView$a;->a:Lcom/deltaid/cameratest/TouchSurfaceView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/deltaid/cameratest/TouchSurfaceView;->b:I

    const/4 v0, 0x1

    return v0
.end method
